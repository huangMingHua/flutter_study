///泛型和swift的泛型差不多
///
///泛型函数
List<T> packaging<T>(T t1,T t2){
  return [t1,t2];
}

///泛型类
class Array<Element> {
    List _buffer ;
    //默认构造函数
    Array(){
      this._buffer = new List<Element>();
    }
    add(Element el){
      _buffer.add(el);
    }
}
///泛型接口
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}
///遵从泛型接口
class FlieCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }
  @override
  void setByKey(String key, Object value) {
    // TODO: implement setByKey
  }

}

void testCode(){
  var arr = new Array<int>();
  arr.add(10);
}