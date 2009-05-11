class Socket
    module SocketExtensions
        module ClassMethods
            def addr(host, port=nil)
                if not port
                    raise "bad!" if not host =~ /(.*):(.*)/
                    host = $1
                    port = $2
                end
                port = port.to_i
                Socket.pack_sockaddr_in(port, host)
            end
        end

        def self.included(klass)
            klass.extend(ClassMethods)
        end
    end
    include SocketExtensions
end
