require "spec_helper"
require "dbf/dbf_shared"

describe DBF, "of type 31 (Visual FoxPro with AutoIncrement field)" do
  before do
    @table = DBF::Table.new "#{DB_PATH}/dbase_31.dbf"
  end
  
  it_should_behave_like "DBF"
  
  it "should have a dBase version of 31" do
    @table.version.should == "31"
  end
  
  it "should not have a memo file" do
    @table.memo.should be_nil
  end
  
end