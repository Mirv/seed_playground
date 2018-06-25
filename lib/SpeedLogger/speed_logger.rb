class SpeedLogger
  # Store log files in same folder
  # Initialize new log files, but which ones 
  # Access said log files, preferably without a ba-jillion if statements
  # Hide away these tasks behind a wall of secrecy 
  #

  # Accepts new directory name in :folder 
  def initialize(*args)
    @folder = args.first[:folder] 
    folder_handler(@folder)
    @logger = {}
  end
  
  def logger(name)
    @logger[name] ||= create_logfile(name)
  end

  # folder handler
  def folder_handler(dir_name = 'benchmarks')
    path = File.join(Rails.root, 'log', dir_name)
    FileUtils.mkdir_p path unless Dir.exists? path
    puts Dir.exists? path
  end
  
  # logfile create
  def create_logfile(name)
    Logger.new(File.join(Rails.root, 'log', @folder, "#{name}.log"))
  end
  
  # log writer
  def write_log(name, message)
    @logger[name].info(message)
  end
end
