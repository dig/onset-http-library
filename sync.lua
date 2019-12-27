function Sync_Get(url, headers)
  if url == nil then return end
  if headers == nil then headers = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'get', '(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;', url, headers)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Get', Sync_Get)

function Sync_GetParams(url, headers, params)
  if url == nil then return end
  if headers == nil then headers = {} end
  if params == nil then params = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'get', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, params)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Get', Sync_Get)

function Sync_Post(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'post', '(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;', url, headers, body)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Post', Sync_Post)

function Sync_PostFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'post', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, fields)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Post', Sync_PostFields)