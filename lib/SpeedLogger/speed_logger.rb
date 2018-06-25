class SpeedLogger
  # Store log files in same folder
  # Initialize new log files, but which ones 
  # Access said log files, preferably without a ba-jillion if statements
  # Hide away these tasks behind a wall of secrecy 
  #
  # def initialize(args)
  #   # load test names
  #   # if the folder doesn't exist create it
  #   # create a folder for every file mentioned or wait till its called
  # end
  
  # Looking for folder name in hash to make new folder if needed
  # folder directory has
  def initialize(*args)
    # byebug
    @folder = args.first[:folder] 
    # blah ||= 'benchmarks'
    folder_handler(@folder)
    # @file, @classname, message = *args 

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
    # filename =
    # message =
    @logger[name].info(message)
  end
end
