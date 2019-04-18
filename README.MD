#A docker image which contains Python3 and required libraries to run UI automation test with RobotFramework 3


**Run Example Test:**
```
docker run -it \
    -v $(pwd)/example.robot:/tests/example.robot:ro \
    -v $(pwd)/out:/out:rw \
    robot-test:latest \
      --outputdir /out /tests
```

```
docker run -it ^
    -v ./example.robot:/tests/example.robot:ro ^
    -v ./out:/out:rw ^
    robot-test:latest ^
      --outputdir ./out /tests
```

docker run -it -v %cd%:/tests:ro -v ./out:/out:rw  --outputdir ./out   robot-test:latest /tests

Output files will be in a new directory *out*.

