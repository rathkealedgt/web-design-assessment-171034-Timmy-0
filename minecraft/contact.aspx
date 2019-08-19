<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contact.aspx.vb" Inherits="minecraft.test" %>

<%Response.WriteFile("headernav.html")%>
       <div class="box main">
           <form id="form1" runat="server">
          <asp:label runat="server" text="Please send us some feedback "></asp:label><br />
           
               <!--name-->
           <p><asp:label runat="server" text="name"></asp:label><br />
           <asp:textbox id="txtName" runat="server" text="Enter Text Here"></asp:textbox><br /></p>
               <!--email-->
            <p><asp:label runat="server" text="email"></asp:label><br />
            <asp:textbox id="txtEmail" runat="server" text="Enter Text Here"></asp:textbox><br /></p>
               <!--subject-->
            <p><asp:label runat="server" text="subject"></asp:label><br />
           <asp:textbox id="txtSubject" runat="server" text="Enter Text Here"></asp:textbox><br /></p>
               <!--message-->
            <p><asp:label runat="server" text="message"></asp:label><br />
           <asp:textbox id="txtMsg" runat="server" text="Enter Text Here"></asp:textbox><br /></p>
   
               <!--submit-->
               <asp:button runat="server" text="submit" ID="btnsubmit" />
               </form>
       </div> <!-- / main-->
      
       <div class="box side">
          if theres something wrong please send a formal email to the creators email: 


           171034@trinityschools.nz
       </div> <!-- / sidebar-->

    <% Response.WriteFile("footer.html")%>
    <!-- / wrapper-->
