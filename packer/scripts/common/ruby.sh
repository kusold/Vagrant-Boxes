# Install Ruby from source in /opt so that users of Vagrant
# can install their own Rubies using packages or however.
RUBY_VERSION=2.1.2
wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-$RUBY_VERSION.tar.gz
tar xvzf ruby-$RUBY_VERSION.tar.gz
cd ruby-$RUBY_VERSION
# ./configure --prefix=/opt/ruby --with-opt-dir=/usr/local/lib --disable-install-doc --enable-shared
./configure --prefix=/opt/ruby --disable-install-doc --enable-shared
make
make install
cd ..
rm -rf ruby-$RUBY_VERSION

# Install RubyGems 1.8.25
RUBYGEMS_VERSION=2.2.2
wget http://production.cf.rubygems.org/rubygems/rubygems-$RUBYGEMS_VERSION.tgz
tar xzf rubygems-$RUBYGEMS_VERSION.tgz
cd rubygems-$RUBYGEMS_VERSION
/opt/ruby/bin/ruby setup.rb --no-document
cd ..
rm -rf rubygems-$RUBYGEMS_VERSION

# Add /opt/ruby/bin to the global path as the last resort so
# Ruby, RubyGems, and Chef/Puppet are visible
echo 'PATH=$PATH:/opt/ruby/bin/'> /etc/profile.d/vagrantruby.sh