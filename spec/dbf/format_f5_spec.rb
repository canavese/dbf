require "spec_helper"
require "dbf/dbf_shared"

describe DBF, "of type f5 (FoxPro with memo file)" do
  before do
    @table = DBF::Table.new "#{DB_PATH}/dbase_f5.dbf"
  end
  
  it_should_behave_like "DBF"
  
  it "should report the correct version number" do
    @table.version.should == "f5"
  end
  
  it "should have a memo file" do
    @table.memo.should be_kind_of(DBF::Memo)
  end
  
  it "should report the correct memo type" do
    @table.memo.format.should == :fpt
  end
  
end