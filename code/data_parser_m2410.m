function [attributes, num_loc, num_itr] = data_parser_m2410 (raw_data)
%
%   Parser for Abberior MSR format m2410: https://wiki.abberior.rocks/ZARR_files_version_m2410


    data = raw_data;
    
    




%   2: m2410: 
%       1, no nested field;
%       2, itr contains all iteration in order: 0, 1, 2, 3...
%       3, data shape 1xN, Nx3 (loc, lnc), Nx2 or Nx1 (dcr)
%   
%
                    % Field Name	Class	Meaning
                    %         bot	logical	Begin of a trace
                    %         cfr	double	Center frequency ratio (efc/efo)
                    %         dcr	double	Detection channel ratio (now reports two values)
                    %         ecc	uint32	Effective counts at offsets
                    %         eco	int32	Effective counts at center
                    %         efc	double	Effective Frequency at center
                    %         efo	double	Effective frequency at offset
                    %         eot	logical	End of trace
                    %         fbg	double	Estimated background frequency value
                    %         fnl	logical	Is final iteration (N.B. does not directly correlate to valid final)
                    %         gri	int32	Grid index
                    %         itr	int32	Iteration index
                    %         loc	double	Localizations (potentially corrected)
                    %         lnc	double	Localizations (no applied corrections)
                    %         sqi	int32	Sequence index
                    %         sta	int32	Status (number that encodes abort criteria)
                    %         thi	int32	Thread index
                    %         tid	int32	Trace ID
                    %         tim	double	Time stamp for every iteration
                    %         vld	logical	Is valid iteration
%
%
                    % Field Name	Class	Meaning
                    %         act	logical	Activation 1, when efo < fbg, 0 otherwise 
                    %         dos	int32	Digital Output
                    %         gri	int32	Grid Index
                    %         itr	structure	Iteration
                    %         sky	int32	Maximum number of repetitions to localize an emitter
                    %         sqi	int32	Sequence index
                    %         tid	int32	Trace ID
                    %         tim	double	Time of localization of last iteration
                    %         vld	logical	Is valid iteration
                    %         nested structure within iteration
                    %         tic	int64	Time stamp for every iteration (FPGA ticks 40 MHz = 25 ns)
                    %         loc	double	Localizations (potentially corrected)
                    %         lnc	double	Final localizations (no applied corrections)
                    %         eco	int32	Effective counts at offsets
                    %         ecc	int32	Effective counts at center
                    %         efo	double	Effective Frequency at offset
                    %         efc	double	Effective frequency at center
                    %         sta	int32	Status (number that encodes abort criteria)
                    %         cfr	double	Center frequency ratio (efc/efo)
                    %         dcr	double	Detection channel ratio
                    %         ext	double	Beampattern diameter
                    %         gvy	double	Galvo center position in y
                    %         gvx	double	Galvo center position in x
                    %         eoy	double	EOD position relative to galvo center in y
                    %         eox	double	EOD position relative to galvo center in x
                    %         dmz	double	Deformable mirror position in z
                    %         lcy	double	Localization position relative to beam in y
                    %         lcx	double	Localization position relative to beam in x
                    %         lcz	double	Localization position relative to beam in z
                    %         fbg	double	Estimated background frequency value
end