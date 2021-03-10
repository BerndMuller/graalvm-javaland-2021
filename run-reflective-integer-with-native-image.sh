#!/bin/bash

# Compilieren mit javac. Erzeugt Byte-Code (ReflectiveInteger.class)
$GRAALVM_HOME/bin/javac -d $TARGET $SOURCE/de/pdbm/graalvm/ReflectiveInteger.java

# Für den einfachen Fall mit String-Literal in Class.forName()
$GRAALVM_HOME/bin/native-image -cp $TARGET de.pdbm.graalvm.ReflectiveInteger reflective-integer
#$GRAALVM_HOME/bin/native-image -H:+PrintAnalysisCallTree -H:+PrintImageObjectTree -cp $TARGET de.pdbm.graalvm.ReflectiveInteger reflective-integer

# Verhindert Fallback mit JVM
#$GRAALVM_HOME/bin/native-image --no-fallback -cp $TARGET de.pdbm.graalvm.ReflectiveInteger reflective-integer

#$GRAALVM_HOME/bin/native-image -cp $TARGET -H:ReflectionConfigurationFiles=./src/main/java/de/pdbm/graalvm/reflection.config de.pdbm.graalvm.ReflectiveInteger reflective-integer

# Aufruf des Executables
./reflective-integer

