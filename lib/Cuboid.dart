class Cuboid{
  int _length;
  int _width;
  int _height;

  Cuboid(length, width, height){
    _length = length;
    _width = width;
    _height = height;
  }

  int get surfaceArea =>
      2 * (_length * _width + _length * _height + _width * _height);

  int get volume =>
      _length * _width * _height;

}
class Cube extends Cuboid{
  Cube(length) : super(length, length, length);
}