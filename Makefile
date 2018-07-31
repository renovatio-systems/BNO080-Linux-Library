
CXX = g++
CXXFLAGS = -Wall
OBJS = BNO080.o PracticalSocket.o
TARGET = testmain
I2CSRC = 

all: $(TARGET)

run: $(TARGET)
	./$(TARGET)
BNO080.o: src/BNO080.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $^
PracticalSocket.o: src/PracticalSocket.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $^
$(TARGET).o: src/$(TARGET).cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $^
$(TARGET): $(OBJS) $(TARGET).o
	$(CXX) $(CXXFLAGS) -o $@ $^
