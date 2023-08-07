<aura:application extends="force:slds" >
   
    <lightning:progressIndicator currentStep="2" type="path" hasError="false">
    <lightning:progressStep label="Step1" value="1"></lightning:progressStep>
    <lightning:progressStep label="Step2" value="2"></lightning:progressStep>
    <lightning:progressStep label="Step3" value="3"></lightning:progressStep>
    <lightning:progressStep label="Step4" value="4"></lightning:progressStep>
        </lightning:progressIndicator>
    <br/><br/><br/><br/>
    
    <lightning:progressIndicator currentStep="3" type="base" hasError="false">
        <lightning:progressStep label="venkat" value="1"></lightning:progressStep>
        <lightning:progressStep label="Ravan" value="2"></lightning:progressStep>
        <lightning:progressStep label="Bala" value="3"></lightning:progressStep>
        <lightning:progressStep label="chiru" value="4"></lightning:progressStep>
      </lightning:progressIndicator>
    
 </aura:application>