local path = debug.getinfo(1,"S").source:match[[^@?(.*[\/])[^\/]-$]]
package.path = path .."?.lua;".. package.path
require('config').working_directory = path
require('bootstrap.init')(unpack(arg))
