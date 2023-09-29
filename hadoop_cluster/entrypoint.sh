#!/bin/bash

function namenode {
    $HADOOP_HOME/bin/hdfs namenode -format
    $HADOOP_HOME/sbin/hadoop-daemon.sh start namenode
    tail -f $HADOOP_HOME/logs/*
}

function datanode {
    $HADOOP_HOME/sbin/hadoop-daemon.sh start datanode
    tail -f $HADOOP_HOME/logs/*
}

"$@"