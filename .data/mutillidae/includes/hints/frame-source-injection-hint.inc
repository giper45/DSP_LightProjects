			<br/><br/>
			<span class="report-header">Overview</span>
			<br/><br/>
			Frame Source Injection may occcur when the src attribute of a frame or
			iframe is determined by a parameter sent by the client. In this case the
			client can send an unintended URI which may be displayed in the frame. 
			<br/><br/>
			<span class="report-header">Discovery Methodology</span>
			<br/><br/>
			Inject canaries into each available parameter and cookie. Observe if any
			canary is found in the src attribute of a frame.
			<br/><br/>
			<span class="report-header">Exploitation</span>
			<br/><br/>
			Inject a URI into the parameter found. Prefix and/or suffix the injections to 
			generate correct syntax. For example, inject http://google.com into the SRC
			attribute of a frame element, then check if Google home page is displayed
			in the frame.
			<br/><br/>