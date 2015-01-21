//c_log(string message, int level)

var message = argument0;
var level = argument1;
var logged_message = "";
var log_all = true;
var file;

if (!directory_exists("logs")) {
    directory_create("logs");
}

if (!file_exists("logs/debug.log")) {
    file = file_text_open_write("logs/debug.log");
    file_text_write_string(file, "DEBUG LOG:");
    file_text_writeln(file);
    file_text_close(file);
}

if (!file_exists("logs/error.log")) {
    file = file_text_open_write("logs/error.log");
    file_text_write_string(file, "ERROR LOG:");
    file_text_writeln(file);
    file_text_close(file);
}

if (!file_exists("logs/fatal.log")) {
    file = file_text_open_write("logs/fatal.log");
    file_text_write_string(file, "FATAL LOG:");
    file_text_writeln(file);
    file_text_close(file);
}

if (!file_exists("logs/warning.log")) {
    file = file_text_open_write("logs/warning.log");
    file_text_write_string(file, "WARNING LOG:");
    file_text_writeln(file);
    file_text_close(file);
}

if (!file_exists("logs/info.log")) {
    file = file_text_open_write("logs/info.log");
    file_text_write_string(file, "INFO LOG:");
    file_text_writeln(file);
    file_text_close(file);
}

if (!file_exists("logs/all.log")) {
    file = file_text_open_write("logs/all.log");
    file_text_write_string(file, "ALL LOG:");
    file_text_writeln(file);
    file_text_close(file);
}

switch(level) {
    case C_LOG__INFO:
        logged_message = 
            "INFO - " 
            + date_datetime_string(date_current_datetime()) 
            + " : " 
            + message;
        
        file = file_text_open_append("logs/info.log");
        file_text_write_string(file, logged_message);
        file_text_writeln(file);
        file_text_close(file);
        
        log_all = C_LOG_LEVEL <= C_LOG__INFO
        break;
    case C_LOG__DEBUG:
        logged_message = 
            "DEBUG - " 
            + date_datetime_string(date_current_datetime()) 
            + " : " 
            + message;
            
        file = file_text_open_append("logs/debug.log");
        file_text_write_string(file, logged_message);
        file_text_writeln(file);
        file_text_close(file);
        
        log_all = C_LOG_LEVEL <= C_LOG__DEBUG
        break;
    case C_LOG__WARN:
        logged_message = 
            "WARNING - " 
            + date_datetime_string(date_current_datetime()) 
            + " : " 
            + message;
            
        file = file_text_open_append("logs/warning.log");
        file_text_write_string(file, logged_message);
        file_text_writeln(file);
        file_text_close(file);
        
        log_all = C_LOG_LEVEL <= C_LOG__WARN
        break;
    case C_LOG__ERROR:
        logged_message = 
            "ERROR - " 
            + date_datetime_string(date_current_datetime()) 
            + " : " 
            + message;
            
        file = file_text_open_append("logs/error.log");
        file_text_write_string(file, logged_message);
        file_text_writeln(file);
        file_text_close(file);
        
        log_all = C_LOG_LEVEL <= C_LOG__ERROR
        break;
    case C_LOG__FATAL:
        logged_message = 
            "FATAL - " 
            + date_datetime_string(date_current_datetime()) 
            + " : " 
            + message;
            
        file = file_text_open_append("logs/fatal.log");
        file_text_write_string(file, logged_message);
        file_text_writeln(file);
        file_text_close(file);
        log_all = C_LOG_LEVEL <= C_LOG__FATAL
        break;
}

if (log_all) {
    file = file_text_open_append("logs/all.log");
    file_text_write_string(file, logged_message);
    file_text_writeln(file);
    file_text_close(file);
}
