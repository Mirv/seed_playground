
  # Store log files in same folder
  # Initialize new log files, but remember which ones 
  # Generate name base on method / class / size of class
  # Access said log files
  # Hide away these tasks behind a wall of secrecy 
  
class AutoFileLogger
  attr_accessor :logger
  
  # Accepts new directory name in :folder 
  def initialize(*args)
    @folder = args.first[:folder] 
    folder_handler(@folder)   # create folder if necessary
    @logger = {}
  end

  def logger(the_class, the_method)
    @logger[the_class] ||= create_logfile(the_class, the_method)
  end

  def folder_handler(dir_name = 'benchmarks')
    path = File.join(Rails.root, 'log', dir_name)
    FileUtils.mkdir_p path unless Dir.exists? path
    puts "Log directory path exists? #{Dir.exists? path}, path is #{path}"
  end
  
  # Requires the class name, method name & then it derives file size
  def discover_log_name(the_class, the_method)
    class_name = the_class.to_s.split(" ").last.split('.').first
    class_size = File.size(the_class.source_location.first)
    "#{class_name}_#{the_method}_#{class_size}"
  end
  
  def create_logfile(the_class, the_method)
    name = discover_log_name(the_class, the_method)
    puts "The file to create:  #{name}"
    file = File.join(Rails.root, 'log', @folder, "#{name}.log")
    Logger.new(file)
  end
  
  def write_log(log, message)
    #  returns the logger object currently with logging.logger in the params
    # @logger[name].info(message) # TODO - writes but doesn't check #logger
    log.info(message) # TODO - writes but doesn't check #logger
  end
end
