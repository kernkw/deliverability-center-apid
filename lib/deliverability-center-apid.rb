module DeliverabilityCenterApid
  require '~/apid-0.0.3.gem'
  class Client
    attr_reader :apid, :type, :name, :params

    def initialize(type, name, params)
      @apid = Apid::Client.new('server_location:8082', 'memcache_key_prefix', cache_object.new || nil)
      @type = type
      @name = name
      @params = []
    end

    def process
      full_name = "#{@type + @name}"
      get_name = "get" + @name

      case type
      when "get"
        ret = apid.full_name!(params)
        #Fuzzy Search
        # if name == "Reason"
        #   response = ret.append("total" : ret.count, "exact" : ret.count)
        # else
        #   rets = apid."get + #{name}"!(id: ret)
        #end
      when "edit"
        ret = apid.full_name!(params)

        response = apid.get_name!(id: ret)
      when "add"
        ret = apid.full_name!(params)
        response = apid.get_name!(id: ret)
      when "delete"
        response = apid.full_name!(params)
      else
        puts "error no type given"
      end
    end

  end
end
