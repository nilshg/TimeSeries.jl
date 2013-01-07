require("DataFrames")
require("Calendar")
require("UTF16")

using DataFrames
using Calendar
using UTF16

df = read_stock("spx.csv");
ec = equity_curve(df);

@smell ec[1]    == 1.0
@smell ec[2]    == 1.0049340441190235
@smell ec[507]  == 1.0932552840276681



