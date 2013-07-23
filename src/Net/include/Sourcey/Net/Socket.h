//
// LibSourcey
// Copyright (C) 2005, Sourcey <http://sourcey.com>
//
// LibSourcey is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// LibSourcey is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.
//


#ifndef SOURCEY_NET_SocketBase_H
#define SOURCEY_NET_SocketBase_H


#include "Sourcey/Base.h"
#include "Sourcey/Memory.h"
#include "Sourcey/Signal.h"
#include "Sourcey/PacketStream.h"
#include "Sourcey/Net/Types.h"
#include "Sourcey/Net/Address.h"
#include "Sourcey/Net/Network.h"


namespace scy {
namespace net {


class Socket;
class SocketPacket;
class SocketAdapter;
class SocketAdapter;


class SocketBase: public CountedObject //<ManagedObject>
	/// SocketBase is the abstract base interface from      
	/// which all socket contexts derive.
{
public:
	SocketBase();
	
	virtual void connect(const Address& address) = 0;
	virtual void connect(const std::string& host, UInt16 port);
	virtual bool shutdown() { throw Exception("Not implemented by protocol"); };
	virtual void close() = 0;

	virtual void bind(const Address& address, unsigned flags = 0) = 0;
	virtual void listen(int backlog = 64) { };
		
	virtual int send(const char* data, int len, int flags = 0) = 0;
	virtual int send(const char* data, int len, const Address& peerAddress, int flags = 0) = 0;
	
	virtual Address address() const throw() = 0;
		/// The locally bound address.
		///
		/// A Wildcard 0.0.0.0:0 address is returned if 
		/// the socket is closed or invalid.
		/// This function will not throw.

	virtual Address peerAddress() const throw() = 0;
		/// The connected peer address.
		///
		/// A Wildcard 0.0.0.0:0 address is returned if 
		/// the socket is closed or invalid.
		/// This function will not throw.

	virtual net::TransportType transport() const = 0;
		/// The transport protocol: TCP, UDP or SSLTCP.
		/// See TransportType definition.
		
	virtual void setError(const Error& err) = 0;
		/// Sets the socket error.
		///
		/// Setting the error will result in socket closure.

	virtual const Error& error() const = 0;
		/// Return the socket error if any.

	virtual bool closed() const = 0;
		/// Returns true if the native socket 
		/// handle is closed.
	
	void* opaque;
		/// Optional client data pointer.
		/// The pointer is not initialized or managed
		/// by the socket base.
	
	virtual void emitConnect();
	virtual void emitRecv(Buffer& buf, const Address& peerAddr);
	virtual void emitError(const Error& error);
	virtual void emitClose();
	
	virtual void addObserver(Socket* socket, bool shared = false);
	virtual void removeObserver(Socket* socket);
	//virtual void sortObservers();
	//virtual void swapAdapter(SocketAdapter* a, SocketAdapter* b);

protected:
	virtual ~SocketBase();
	
	std::vector<Socket*> _observers;
	bool _insideCallback;
	
	friend class Socket;
	friend class SocketAdapter;
	friend class GCDeleter<SocketBase>;	
};


	
	//void onHostResolved(void*, const net::DNSResult& result);
	//bool connected() const;
		/// Returns true when the socket is connected 
		/// to the peer.
	//bool _connected;


typedef std::vector<SocketBase*> SocketBaseList;


// -------------------------------------------------------------------
//
struct PacketInfo: public IPacketInfo
	/// An abstract interface for packet sources to
	/// provide extra information about packets.
{ 
	Socket& socket;
		/// The source socket

	Address peerAddress;	
		/// The peerAddress is for UDP compatibility.
		/// For TCP it will match the connected address.

	PacketInfo(Socket& socket, const Address& peerAddress) :
		socket(socket), 
		peerAddress(peerAddress) {}		

	PacketInfo(const PacketInfo& r) : 
		socket(r.socket), 
		peerAddress(r.peerAddress) {}

	virtual ~PacketInfo() {}; 
	
	virtual IPacketInfo* clone() const {
		return new PacketInfo(*this);
	}
};


// -------------------------------------------------------------------
//
class Socket
	/// Socket is a wrapper class for accessing the underlying 
	/// reference counted SocketBase instance.
	///
	/// Each Socket class has its own SocketBase instance. 
	/// See UDPSocket, TCPSocket and SSLSocket.
	///
	/// Socket exposes all basic SocketBase operations and can  
	/// be extended as necessary for different protocols.
{
public:
	Socket(const Socket& socket); //, SocketAdapter* adapter = 0
		/// Attaches the SocketBase from the given socket and
		/// increments the SocketBase reference count.
		
	Socket(SocketBase* base, bool shared); //, SocketAdapter* adapter = 0
		/// Creates the Socket from the given SocketBase and attaches
		/// the given or default SocketAdapter.
		///
		/// If shared is true the SocketBase reference count will be
		/// incremented. If not we do not increment the reference count.
		/// This effectively means are taking ownership of the SocketBase, 
		/// as the destruction of this Socket object will be directly 
		/// responsible for the destruction of the SocketBase.

	Socket& operator = (const Socket& socket);
		/// Assignment operator.
		///
		/// Releases the socket's socket context and
		/// attaches the socket context from the other socket and
		/// increments the reference count of the SocketBase.

	virtual Socket& assign(SocketBase* base, bool shared);
		/// Assigns the SocketBase instance for this socket.
		/// Any methods that assigns the base instance should 
		/// assign() so that subclasses can manage instance
		/// pointer changes.
		
	virtual ~Socket();
		/// Destroys the Socket and releases the socket context.
				
	virtual void connect(const std::string& host, UInt16 port);
	virtual void connect(const Address& address);
	virtual bool shutdown();
	virtual void close();

	virtual void bind(const Address& address);
	virtual void listen(int backlog = 64);
		
	virtual int send(const char* data, int len, int flags = 0);
	virtual int send(const char* data, int len, const Address& peerAddress, int flags = 0);

	virtual int send(const IPacket& packet, int flags = 0);
	virtual int send(const IPacket& packet, const Address& peerAddress, int flags = 0);
	virtual void send(void*, IPacket& packet);

	virtual void setError(const Error& err);
		/// Sets the socket error.
		///
		/// Setting the error will result in socket closure.

	bool closed() const;
		/// Returns true if the native socket handle is closed.
	
	const Error& error() const;
		/// Return the socket error if any.

	net::TransportType transport() const;
		/// The transport protocol: TCP, UDP or SSLTCP.
		/// See TransportType definition.
	
	Address address() const;
		/// The locally bound address.

	Address peerAddress() const;
		/// The connected peer address.
	
	NullSignal Connect;
		/// Signals that the socket is connected.

	Signal<SocketPacket&> Recv;
		/// Signals when data is received by the socket.

	Signal<const Error&> Error;
		/// Signals that the socket is closed in error.
		/// This signal will be sent just before the 
		/// Closed signal.

	NullSignal Close;
		/// Signals that the underlying socket is closed,
		/// maybe in error.

	SocketBase& base() const;
		/// Returns the SocketBase for this socket.

	SocketAdapter* adapter() const;
		/// Returns the SocketAdapter for this socket.
		
	void setAdapter(SocketAdapter* adapter);
		/// Sets the new SocketAdapter.
		/// The old instance will not be destroyed.

	void replaceAdapter(SocketAdapter* adapter);
		/// Sets the SocketAdapter instance,
		/// and deletes the old one.

	virtual void onSocketConnect();
	virtual void onSocketRecv(Buffer& buf, const Address& peerAddr);
	virtual void onSocketError(const scy::Error& error);
	virtual void onSocketClose();
		
	int isNull() const;
	
	/*
	int priority;
		/// A higher priority gives the current observer
		/// precedence in the socket callback chain.

	static bool compareProiroty(const SocketAdapter* l, const SocketAdapter* r);
	*/

protected:		
	Socket(); //SocketAdapter* adapter = 0
		/// Creates a NULL socket.

	friend class SocketBase;

	SocketBase* _base;
	SocketAdapter* _adapter;
};


// -------------------------------------------------------------------
//
class SocketAdapter//: public SocketAdapter
{
public:
	SocketAdapter(Socket* socket = NULL);
		/// Creates the SocketAdapter
		/// The Socket instance can be NULL, but it must be set 
		/// before any callbacks come back.
	
	virtual ~SocketAdapter();

	virtual void onSocketConnect();
	virtual void onSocketRecv(Buffer& buf, const Address& peerAddr);
	virtual void onSocketError(const Error& error);
	virtual void onSocketClose();
		/// These virtual methods can be overridden as necessary
		/// to intercept socket events before they hit the application.
		
	virtual int send(const char* data, int len, int flags = 0);
	virtual int send(const char* data, int len, const Address& peerAddress, int flags = 0);
	
	Socket* socket;
};


// -------------------------------------------------------------------
//
class SocketPacket: public RawPacket 
	/// SocketPacket is the  default packet type emitted by sockets.
	/// SocketPacket provides peer address information and a buffer
	/// reference for nocopy binary operations.
	///
	/// The referenced packet buffer and data are only guaranteed 
	/// for the duration of the receive callback.
{	
public:
	Buffer& buffer;
		/// The received data

	PacketInfo* info;
		/// PacketInfo pointer

	SocketPacket(Socket& socket, Buffer& buffer, const Address& peerAddress) : 
		RawPacket(nullptr, new PacketInfo(socket, peerAddress), nullptr, buffer.data(), buffer.available()),
		buffer(buffer)
	{
		info = (PacketInfo*)RawPacket::info;
	}

	SocketPacket(const SocketPacket& that) : 
		RawPacket(that), info(that.info), buffer(that.buffer)
	{
	}
	
	virtual ~SocketPacket() 
	{
	}

	virtual void print(std::ostream& os) const 
	{ 
		os << className() << ": " << info->peerAddress << std::endl; 
	}

	virtual IPacket* clone() const 
	{
		// make babies!
		return new SocketPacket(*this);
	}	

	virtual bool read(Buffer& buf) 
	{ 
		assert(0 && "write only"); 
		return false;
	}

	virtual void write(Buffer& buf) const 
	{	
		buf.put(_data, _size); 
	}
	
	virtual const char* className() const 
	{ 
		return "SocketPacket"; 
	}
};


} } // namespace scy::net


#endif // SOURCEY_NET_Socket_H




/*
	//void duplicate();
	//void release();
	//int refCount() const;

// -------------------------------------------------------------------
//
class SocketAdapter
	/// SocketAdapter is the short and sweet socket event handling 
	/// interface which is also directly responsible for incrementing and 
	/// deincrementing the reference count of the underlying SocketBase.
	/// 
	/// This class can also be extended to implement custom processing 
	/// for received socket data before it is dispatched to the application.
	/// See the SocketAdapter, PacketSocket and Transaction classes for ideas.
	///
	/// TODO: SocketBase pointer here
	///
{
public:
	SocketAdapter(int priority = 0);
	
	virtual ~SocketAdapter();

	virtual void onSocketConnect() = 0;
	virtual void onSocketRecv(Buffer& buf, const Address& peerAddr) = 0;
	virtual void onSocketError(const Error& error) = 0;
	virtual void onSocketClose() = 0;
};


	/// SocketAdapter is an proxy layer which is attached to a
	/// SocketBase instance to handle socket events.
	///
	/// SocketAdapters are directly responsible for incrementing and 
	/// deincrementing the reference count of the managing SocketBase.
	/// 
	/// This class can also be extended to implement custom processing 
	/// for received socket data before it is dispatched to the application.
	/// See the PacketSocketAdapter and Transaction classes for ideas.
	///
	/// TODO: Rename to SocketAdapter, and extend as SocketAdapter with signals
	///
*/

	//virtual Socket& assign(SocketBase* ptr);
	//virtual Socket& assign(const Socket& ptr);


 // { throw Exception("Not implemented by protocol"); }; // { throw Exception("Not implemented by protocol"); };

/*
template<class SocketT = SocketBase>
class SocketHandle: public Handle<SocketT>
	/// SocketHandle is a disposable socket wrapper for
	/// SocketBase types which can be created on the stack
	/// for easy reference counted memory management for 
	/// the underlying socket instance.
{
public:		
	typedef SocketT Base;
	typedef std::vector<SocketHandle<SocketT>> List;

	SocketHandle() :
		// NOTE: Only compiles for derived SocketBase implementations
		Handle<SocketT>(new SocketT)
	{
	}

	SocketHandle(SocketBase* ptr) :
		Handle<SocketT>(ptr)
	{
		assertInstance(ptr);
	}

	SocketHandle(const SocketHandle& ptr) : 
		Handle<SocketT>(ptr)
	{
		assertInstance(ptr);
	}

	SocketHandle& operator = (SocketBase* ptr)
	{
		assertInstance(ptr);
		Handle<SocketT>::operator = (socket);
		return *this;
	}
		
	SocketHandle& operator = (const SocketHandle& socket)
	{
		assertInstance(socket.base());
		Handle<SocketT>::operator = (socket);
		return *this;
	}

	~SocketHandle()
	{
	}
	
	void assertInstance(const SocketBase* ptr) 
	{	
		if (!dynamic_cast<const SocketT*>(ptr))
			throw Exception("Cannot assign incompatible socket");
	}
};
*/



/*
//template<class SocketT = SocketBase>
class SocketHandle: public Handle<SocketBase>
	/// SocketHandle is a disposable socket wrapper for
	/// SocketBase types which can be created on the stack
	/// for easy reference counted memory management for 
	/// the underlying socket instance.
{
public:		
	typedef SocketBase Base;
	typedef std::vector<SocketBase> List;

	SocketHandle(SocketBase* ptr) :
		Handle<SocketBase>(ptr)
	{
		assertInstance(ptr);
	}

	SocketHandle(const SocketHandle& socket) : 
		Handle<SocketBase>(socket)
	{
		assertInstance(socket.base());
	}

	virtual ~SocketHandle()
	{
	}

	SocketHandle& operator = (SocketBase* ptr)
	{
		assertInstance(ptr);
		Handle<SocketBase>::operator = (ptr);
		return *this;
	}
		
	SocketHandle& operator = (const SocketHandle& socket)
	{
		assertInstance(socket.base());
		Handle<SocketBase>::operator = (socket);
		return *this;
	}
	
	virtual void assertInstance(const SocketBase* ptr) 
	{	
		if (!dynamic_cast<const SocketBase*>(ptr))
			throw Exception("Cannot assign incompatible socket");
	}

protected:
	SocketHandle() 
		//:
		// NOTE: Only compiles for derived SocketBase implementations
		//Handle<SocketT>(new SocketT)
	{
	}
};

	template<class T>
	SocketT* as()
		/// Attempt to cast and return the internal socket 
	{
		return dynamic_cast<T*>(get());
	}
*/

/*

	template<class T>
	SocketT* as()
		/// Attempt to cast and return the internal socket 
	{
		return dynamic_cast<T*>(get());
	}
*/

/*
	template<class T>
	bool is()
	{
		return as<T>() != NULL;
	}
	*/


	//Signal2<Buffer&, const net::PacketInfo&> MulticastRecv;
		/// Signals data received by the socket.
		/// The address argument is for UDP compatibility.
		/// For TCP it will always return the peerAddress.

/* //CountedBase
	typedef Handle<SocketBase> SocketHandle;
class SocketHandle: public CountedBase //CountedObject
	/// SocketBase is the abstract base interface from      
	/// which all socket contexts derive.
{
	typedef Handle<SocketBase> SocketHandle;
public:
}

SSLSocket::SSLSocket(const SocketHandle& socket) : 
	net::Socket(socket)
{
	if (!dynamic_cast<SSLBase*>(get()))
		throw Exception("Cannot assign incompatible socket");
}
*/
	//virtual void bind6(const Address& address, unsigned flags = 0) { throw Exception("Not implemented by protocol"); };