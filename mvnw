#!/bin/sh
# ----------------------------------------------------------------------------
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Maven Start Up Batch script
# ----------------------------------------------------------------------------

MAVEN_PROJECTBASEDIR="${MAVEN_BASEDIR:-$(cd "$(dirname "$0")"; pwd)}"

# OS specific support.  $var _must_ be set to either true or false.
cygwin=false
mingw=false
case "$(uname)" in
  CYGWIN*) cygwin=true ;;
  MINGW*) mingw=true ;;
esac

# For Cygwin, ensure paths are in UNIX format before anything is touched.
if $cygwin ; then
  MAVEN_PROJECTBASEDIR=$(cygpath --unix "$MAVEN_PROJECTBASEDIR")
fi

# For Mingw, ensure paths are in UNIX format before anything is touched.
if $mingw ; then
  MAVEN_PROJECTBASEDIR=$(cd "$MAVEN_PROJECTBASEDIR" && pwd)
fi

# Resolve a property from maven-wrapper.properties
mavenWrapperProperty() {
  prop="$1"
  val=$(grep "^${prop}=" "${MAVEN_PROJECTBASEDIR}/.mvn/wrapper/maven-wrapper.properties" | sed -e "s/^${prop}=//")
  echo "$val"
}

WRAPPER_JAR="${MAVEN_PROJECTBASEDIR}/.mvn/wrapper/maven-wrapper.jar"
WRAPPER_URL=$(mavenWrapperProperty wrapperUrl)

# Download wrapper jar if needed
if [ ! -f "$WRAPPER_JAR" ]; then
  if command -v curl >/dev/null 2>&1 ; then
    curl -fsSL -o "$WRAPPER_JAR" "$WRAPPER_URL"
  elif command -v wget >/dev/null 2>&1 ; then
    wget -q -O "$WRAPPER_JAR" "$WRAPPER_URL"
  else
    echo "Neither curl nor wget is available to download Maven wrapper." >&2
    exit 1
  fi
fi

exec "${JAVA_HOME:-java}" -classpath "$WRAPPER_JAR" \
  -Dmaven.multiModuleProjectDirectory="$MAVEN_PROJECTBASEDIR" \
  org.apache.maven.wrapper.MavenWrapperMain "$@"
