// Shape - superclass (1)
function Shape() {
    this.x = 0;
    this.y = 0;
  }
  
  // superclass method (2)
  Shape.prototype.move = function(x, y) {
      this.x += x;
      this.y += y;
      console.info("Shape moved.");
  };
  
  // Rectangle - subclass (3)
  function Rectangle() {
    Shape.call(this); // call super constructor.
  }
  
  // subclass extends superclass
  Rectangle.prototype = Object.create(Shape.prototype); (4)
  Rectangle.prototype.constructor = Rectangle; (5)
  
  var rect = new Rectangle();
  
  rect instanceof Rectangle // true.
  rect instanceof Shape // true.
  
  rect.move(1, 1); // Outputs, "Shape moved."
  console.log(rect.x)