#Write a recipe to download the java tar ball, extract it under /opt/ and set JAVA_HOME using bash resources.
#JAVA tar ball - wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz


bash 'java_tar_ball' do
	cwd ::File.dirname('/opt/binu')
	code <<-EOH
		echo "binu"
		mkdir -p testing
		wget -c --header  "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
		tar xvf #{'jdk-8u131-linux-x64.tar.gz'} -C #{'binu/testing'}
		export JAVA_HOME=/opt/binu/testing/jdk1.8.0_131
		echo $JAVA_HOME>1
		export PATH=$PATH:$JAVA_HOME/bin
		echo $PATH>2
		EOH
end
