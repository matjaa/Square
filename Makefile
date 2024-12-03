CXXFLAGS = /c /EHsc
OUT = square.exe
all: $(OUT)
$(OUT): main.obj compute.obj
	link main.obj compute.obj /out:$(OUT)
compute.obj: compute.cpp compute.h
	$(CXX) $(CXXFLAGS) compute.cpp
main.obj: main.cpp
	$(CXX) $(CXXFLAGS) main.cpp