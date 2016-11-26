/// scrInstanceOf(parObjType) returns boolean
var objType = argument0;
var isInstanceOf;

isInstanceOf = object_is_ancestor(object_index, objType) or object_index = objType;

return isInstanceOf;

