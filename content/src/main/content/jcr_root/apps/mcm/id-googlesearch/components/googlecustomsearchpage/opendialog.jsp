<%@ include file="/apps/id-googlesearch/components/global.jsp"%>
<%--
/*************************************************************************
 * Copyright 2015 Infield Design
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @author Ankit Gubrani <ankit.gubrani@infielddesign.com>
 *
 *************************************************************************/
--%>
<%@page session="false"%>
<%--
    Open configuration dialog if the either of these properties are blank "appname" or "apikey" 
    or "contextnumber
    --%>
<script type="text/javascript">

    <% if ( properties.get("appname", "").equals("") || properties.get("apikey", "").equals("") 
           || properties.get("cx", "").equals("")) {
		String encodedPath = xssAPI.encodeForJSString(resource.getPath());
      %>
    CQ.WCM.onEditableReady("<%= encodedPath %>", function(editable){
        CQ.wcm.EditBase.showDialog(editable);
    }, this);
    <% } else {%>
    $CQ(".when-config-successful").show();
    <% } %>
</script>
