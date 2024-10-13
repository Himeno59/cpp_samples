#ifndef GREETINGS_H
#define GREETINGS_H

#include <string>

class Greetings {
public:
  Greetings();

  void sayHello();
  void sayGoodbye();
  void sayCustomGreeting(const std::string& greeting);
  
private:
  
};

#endif // GREETINGS_H
