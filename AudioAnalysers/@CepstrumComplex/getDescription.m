function str = getDescription(obj)
% GETDESCRIPTION Returns a text string of the description

str = {'Derives successive complex cepstra of the input wave. ', ...
    'Outputs are EITHER the complex cepstrum', ...
    'OR the liftered spectrum.', ...
    ' ', ...
    'For the cepstrum option, outputs are:', ...
    '* Magnitude cepstrogram', ...
    '* Average power cepstrum', ...
    'Standardized and non-standardized power cepstral moments, such as', ...
    '* Centroid', ...
    '* Standard deviation', ...
    '* Skewness', ...
    '* Kurtosis', ...
    ' ', ...
    'For the liftered spectrum option, outputs are:', ...
    '* Magnitude spectrogram', ...
    '* Average power spectrum', ...
    '* Spectrum level', ...
    'Standardized and non-standardized power spectral moments, such as', ...
    '* Centroid', ...
    '* Standard deviation', ...
    '* Skewness', ...
    '* Kurtosis', ...
    ' ', ...
    'Liftering is done by bandpassing the complex cepstrum', ...
    'and returning to the frequency domain.'};
