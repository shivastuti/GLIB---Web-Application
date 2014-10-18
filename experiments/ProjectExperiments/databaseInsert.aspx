<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="../../css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1>Adding Database Table to ASPX</h1>
        <h2>Description</h2>
        <hr />
        In this experiment I am populating the aspx page by retrieving data form my books table.
        I have tried to display the data as a Grid,a List and as Details with insert,delete,
        update functionality for all the rows.
        This experiment helped me in understanding the smooth transition between the back end and front end in a web portal.
        <hr />
        <h2>Results</h2>
        <h3>Books</h3>

        <p>
            <asp:GridView CssClass="table"
                 ID="GridView1"
                 runat="server"
                 AutoGenerateColumns="False"
                 DataKeyNames="bid"
                 DataSourceID="pgsql"
                 EmptyDataText="There are no data records to display."
                 AllowSorting="true"
                 AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="bid" HeaderText="bid" ReadOnly="True" SortExpression="bid" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                    <asp:BoundField DataField="publish" HeaderText="publish" SortExpression="publish" />
                    <asp:CommandField ButtonType="Button" DeleteText="&times;" 
                        ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-danger btn-xs" />
                </Columns>
                 <PagerSettings Mode="NumericFirstLast" />
            </asp:GridView>
            
            <asp:DataList CssClass="table" ID="DataList1" runat="server" DataKeyField="bid" DataSourceID="pgsql">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-xs-2">
                            <div width="140px">
                                <img class="img-rounded" alt="140x140" style="max-width: 100%;" src="../../images/books1.jpg">
                            </div>
                        </div>
                        <div class="col-xs-10">
                    Book Id:
                    <asp:Label ID="bid" runat="server" Text='<%# Eval("bid") %>' />
                    <br />
                    BookName:
                    <asp:Label ID="Name" runat="server" Text='<%# Eval("bookname") %>' />
                    <br />
                    Publish Date:
                    <asp:Label ID="Publish" runat="server" Text='<%# Eval("publish") %>' />
                    <br />
                    
                    </ItemTemplate>
            </asp:DataList>
             <asp:DetailsView CssClass="table" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="bid" DataSourceID="pgsql" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="bid" HeaderText="bid" InsertVisible="True" ReadOnly="True" SortExpression="bid" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname">
                    <ItemStyle Wrap="False" />
                         <ItemStyle Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="publish" HeaderText="publish" SortExpression="publish" />               
                <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True"/>
                </Fields>
                 <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev" />
            </asp:DetailsView>
            <asp:SqlDataSource
                ID="pgsql"
                runat="server" ConnectionString="<%$ ConnectionStrings:koulsh16CS %>" 
                DeleteCommand="DELETE FROM [books] WHERE [bid] = @bid" 
                InsertCommand="INSERT INTO [books] ([bid], [bookname], [publish]) VALUES (@bid, @bookname, @publish)" 
                ProviderName="<%$ ConnectionStrings:koulsh16CS.ProviderName %>" 
                SelectCommand="SELECT [bid], [bookname], [publish] FROM [books]"
                UpdateCommand="UPDATE [books] SET [bookname] = @bookname, [publish] = @publish WHERE [bid] = @bid">
                <DeleteParameters>
                    <asp:Parameter Name="bid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="bid" Type="Int32" />
                    <asp:Parameter Name="bookname" Type="String" />
                    <asp:Parameter Name="publish" Type="Datetime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="bookname" Type="String" />
                    <asp:Parameter Name="publish" Type="Datetime" />
                    <asp:Parameter Name="bid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
         <hr />
       <h3>Sources</h3>
        
        <a href="../../fileview/default.aspx?~/experiments/Week9/databaseInsert.aspx">aspxSource</a><br/>
        <br />
            
        </div>
       
    </form>
</body>
</html>