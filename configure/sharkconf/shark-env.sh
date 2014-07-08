#!/usr/bin/env bash

# Copyright (C) 2012 The Regents of The University California.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# (Required) Amount of memory used per slave node. This should be in the same
# format as the JVM's -Xmx option, e.g. 300m or 1g.
export SPARK_MEM=1g

# (Required) Set the master program's memory
export SHARK_MASTER_MEM=1g

# (Optional) Specify the location of Hive's configuration directory. By default,
# Shark run scripts will point it to $SHARK_HOME/conf
export HIVE_CONF_DIR=$HIVE_HOME/conf

# For running Shark in distributed mode, set the following:
export HADOOP_HOME=$HADOOP_HOME
export SPARK_HOME=$SPARK_HOME
export MASTER="spark://lixinyuan:7077"
# Only required if using Mesos:
#export MESOS_NATIVE_LIBRARY=/usr/local/lib/libmesos.so

# Only required if run shark with spark on yarn
export SHARK_EXEC_MODE=yarn
export SPARK_ASSEMBLY_JAR=/home/spark/spark/lib/spark-assembly-1.0.0-hadoop2.2.0.jar
export SHARK_ASSEMBLY_JAR=/home/spark/shark/target/scala-2.10/shark_2.10-0.9.1.jar

# (Optional) Extra classpath
#export SPARK_LIBRARY_PATH=""

# Java options
# On EC2, change the local.dir to /mnt/tmp
SPARK_JAVA_OPTS=" -Dspark.local.dir=/tmp "
SPARK_JAVA_OPTS+="-Dspark.kryoserializer.buffer.mb=10 "
SPARK_JAVA_OPTS+="-verbose:gc -XX:-PrintGCDetails -XX:+PrintGCTimeStamps "
export SPARK_JAVA_OPTS

# (Optional) Tachyon Related Configuration
#export TACHYON_MASTER=""                     # e.g. "localhost:19998"
#export TACHYON_WAREHOUSE_PATH=/sharktables   # Could be any valid path name

