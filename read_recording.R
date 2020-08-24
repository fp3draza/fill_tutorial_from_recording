read_file('~/Desktop/recorder/recording.txt')
readLines(con = "~/Desktop/recorder/recording.txt")

string = read_file('~/Desktop/recorder/recording.txt')
after_split = strsplit(string, 'END')

read_and_split_recording = function(record_file){
  full_recording = read_file(record_file)
  split_recording_by_event = strsplit(full_recording, 'END')
  for (line in 1:length(split_recording_by_event[[1]])) {
    label_and_code = sub('.*\\LABEL: (.*)','\\1',after_split[[1]][line])
    label = strsplit(label_and_code,',')[[1]][1]
    code = strsplit(label_and_code,',')[[1]][2]
    code =  sub('.*\\CODE: (.*)','\\1',code)
    print(label)
    print(code)
  }
}

read_and_fill_markdown = function(markdown_file){
  rmd = readLines(markdown_file)
  code_chunk_start = grep(current_label, rmd)
  code_chunk_end = grep('```', rmd[code_chunk_start+1:length(rmd)])[1]
  rmd[(code_chunk_start+1):(code_chunk_end-1)] = ''
  rmd[code_chunk_start+1] = current_
}