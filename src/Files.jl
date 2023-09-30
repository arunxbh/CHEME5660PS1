function _loadcsvfile(path::String)::DataFrame
    return CSV.read(path, DataFrame);
end

"""
    MyTreasuryBondsDataSet() -> DataFrame

Convenience function to load the treasury bond data set.
"""
function MyTreasuryBondsDataSet()::DataFrame
    return _loadcsvfile(joinpath(_PATH_TO_DATA, "PS1-CHEME-5660-TDAuctionData-Bonds.csv"));
end