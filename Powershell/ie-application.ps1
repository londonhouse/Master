  $weblink = "https://www-947.ibm.com/support/entry/portal/wlup"
        
        #Opens IE
            $Typenum= '7979'
            $Tag = '99LF546'
            $ie = New-Object -ComObject "InternetExplorer.Application";
            $ie.Visible = $true;
            $ie.navigate($weblink)
            while ($ie.Busy -and $ie.ReadyState -ne 4){ sleep -Milliseconds 100 };
            $doc = $ie.document;
            $elementType = [System.__ComObject].InvokeMember(“getElementById”,[System.Reflection.BindingFlags]::InvokeMethod, $null, $doc, 'viewns_Z7_3GC2KTCTQ6VRE0AQ70MKM138I3_:wlupForm:type1');
            $elementType.Value = $Typenum;
            $elementSerial = [System.__ComObject].InvokeMember(“getElementById”,[System.Reflection.BindingFlags]::InvokeMethod, $null, $doc, 'viewns_Z7_3GC2KTCTQ6VRE0AQ70MKM138I3_:wlupForm:serial1');
            $elementSerial.Value=$Tag
            $btn = [System.__ComObject].InvokeMember(“getElementById”,[System.Reflection.BindingFlags]::InvokeMethod, $null, $doc,'viewns_Z7_3GC2KTCTQ6VRE0AQ70MKM138I3_:wlupForm:button1')
            while ($ie.Busy -and $ie.ReadyState -ne 4){ sleep -Milliseconds 10 };
            $btn.click()
            
            while ($ie.Busy -and $ie.ReadyState -ne 4){ sleep -Milliseconds 100 };
            $doc2 = $ie.document
           # $tabledata=[System.__ComObject].InvokeMember(“getElementByclassname”,[System.Reflection.BindingFlags]::InvokeMethod, $null, $doc2,'"ibm-data-table"')
            