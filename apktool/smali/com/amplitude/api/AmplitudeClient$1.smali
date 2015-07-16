.class Lcom/amplitude/api/AmplitudeClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # invokes: Lcom/amplitude/api/AmplitudeClient;->initializeDeviceId()Ljava/lang/String;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$000(Lcom/amplitude/api/AmplitudeClient;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->advertisingId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$102(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->versionName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$302(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getOSName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->osName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$402(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->osVersion:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$502(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->brand:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$602(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->manufacturer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$702(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->model:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$802(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->carrier:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$902(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->country:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$1002(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/amplitude/api/AmplitudeClient;->language:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$1102(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    return-void
.end method
