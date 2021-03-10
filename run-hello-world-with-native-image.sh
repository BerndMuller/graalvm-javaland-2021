#!/bin/bash
$GRAALVM_HOME/bin/javac -d $TARGET $SOURCE/de/pdbm/graalvm/HelloWorld.java
#$GRAALVM_HOME/bin/native-image -cp $TARGET de.pdbm.graalvm.HelloWorld hello-world
#$GRAALVM_HOME/bin/native-image --static -cp $TARGET de.pdbm.graalvm.HelloWorld hello-world
$GRAALVM_HOME/bin/native-image  -cp $TARGET -H:+PrintAnalysisCallTree -H:+PrintImageObjectTree de.pdbm.graalvm.HelloWorld hello-world
#./hello-world

