function plotter(varargin)
infile = varargin{1}
fileIndex = str2double(varargin{2})
objIndex = str2double(varargin{3})
outfile = varargin{4}
  
execPlotter(infile, fileIndex, objIndex, outfile)

end


function execPlotter(infile, fileIndex, objIndex, outfile)

inTemp = './temp/plotterInput.mat'
copyfile(infile, inTemp)
load(inTemp);
objs
dim = size(objs)

if (fileIndex > dim(1) || objIndex > dim(2))
 disp(['Index (' int2str(fileIndex) ',' int2str(objIndex) ') out of bounds. Object dimensions are ' int2str(dim(1)) 'x' int2str(dim(2))])
return	
end

f=figure('visible','off')
plot(objs{fileIndex}.output{objIndex})

outTemp = './temp/plotterOutput.jpg'
saveas(f, outTemp)
close(f)

copyfile(outTemp, outfile)

end
