#include "cpp_tutorial/greetings.h"
#include "iostream"

Greetings::Greetings() {}

void Greetings::sayHello() {
  std::cout << "Hello" << std::endl;
}

void Greetings::sayGoodbye() {
  std::cout << "Goodbye" << std::endl;
}

void Greetings::sayCustomGreeting(const std::string& greeting) {
  std::cout << greeting << std::endl;
}
