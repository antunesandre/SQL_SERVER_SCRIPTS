-- This code can´t replace cursor in a data base
-- Current ID
DECLARE @CURRENT_ROW_ID int = 0

while(1=1)
BEGIN
	-- print @CURRENT_ROW_ID
	select top 1 
	@CURRENT_ROW_ID = <ID, must bee unique>, 
	@<var1> = <var1> -- 
	from <Table Name> 
	where <ID, must bee unique> > @CURRENT_ROW_ID 
	order by <ID, must bee unique>
	 
	IF @@rowcount = 0
	BEGIN
	 BREAK -- EXIT
	END
	
	-- <enter your script here for each row>
	
END 
