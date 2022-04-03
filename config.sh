echo "################################################################"
v=squid -v
echo $v

config() { 
  local name="test"
  local type="src"
  local value="test.com"
  local allowed=""
  local rule="acl $name $type $value"

  local http="http_access " 

  local http_allow="http_access allow $name"
  local http_deny="$http deny"

if[ "$type" == "src" ]; then
  echo "acl $name src $value"
else [ "$type" == "dst" ]; then
  echo "0.0.0.0/00" 
fi


  echo $rule
}
echo "################################################################"
