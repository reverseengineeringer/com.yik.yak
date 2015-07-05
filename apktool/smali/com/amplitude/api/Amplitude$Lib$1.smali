.class Lcom/amplitude/api/Amplitude$Lib$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # invokes: Lcom/amplitude/api/Amplitude$Lib;->initializeDeviceId()Ljava/lang/String;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$100(Lcom/amplitude/api/Amplitude$Lib;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->deviceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$002(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->advertisingId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$202(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->versionName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$402(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getOSName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->osName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$502(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->osVersion:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$602(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->brand:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$702(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->manufacturer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$802(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->model:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$902(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->carrier:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$1002(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->country:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$1102(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib$1;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    # getter for: Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/Amplitude$Lib;->access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/Amplitude$Lib;->language:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->access$1202(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    return-void
.end method
