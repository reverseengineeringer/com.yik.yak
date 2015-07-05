.class Lcom/parse/GcmRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR_EXTRA:Ljava/lang/String; = "error"

.field public static final REGISTER_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field public static final REGISTER_RESPONSE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final REGISTRATION_ID_EXTRA:Ljava/lang/String; = "registration_id"

.field private static final SENDER_ID:Ljava/lang/String; = "1076345567071"

.field private static final TAG:Ljava/lang/String; = "com.parse.GcmRegistrar"


# instance fields
.field private context:Landroid/content/Context;

.field private lock:Ljava/lang/Object;

.field private request:Lcom/parse/GcmRegistrar$Request;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    .line 52
    iput-object v1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    .line 53
    iput-object v1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/GcmRegistrar;Lcom/parse/GcmRegistrar$Request;)Lcom/parse/GcmRegistrar$Request;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    return-object p1
.end method

.method public static getInstance()Lcom/parse/GcmRegistrar;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/parse/GcmRegistrar$Singleton;->INSTANCE:Lcom/parse/GcmRegistrar;

    return-object v0
.end method

.method private sendRegistrationRequest()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    const-string v2, "1076345567071"

    invoke-static {v0, v2}, Lcom/parse/GcmRegistrar$Request;->createAndSend(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/GcmRegistrar$Request;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    .line 117
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar$Request;->getTask()LR;

    move-result-object v0

    new-instance v2, Lcom/parse/GcmRegistrar$2;

    invoke-direct {v2, p0}, Lcom/parse/GcmRegistrar$2;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v0, v2}, LR;->a(LQ;)LR;

    .line 133
    :cond_0
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateAsync()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/parse/GcmRegistrar$1;

    invoke-direct {v0}, Lcom/parse/GcmRegistrar$1;-><init>()V

    invoke-static {v0}, LR;->a(Ljava/util/concurrent/Callable;)LR;

    .line 49
    return-void
.end method


# virtual methods
.method getRequestIdentifier()I
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    # getter for: Lcom/parse/GcmRegistrar$Request;->identifier:I
    invoke-static {v0}, Lcom/parse/GcmRegistrar$Request;->access$200(Lcom/parse/GcmRegistrar$Request;)I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleRegistrationIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar;->isRegistrationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    .line 156
    invoke-virtual {v1, v0}, Lcom/parse/ParseInstallation;->setDeviceToken(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->saveEventually()LR;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar$Request;->onReceiveResponseIntent(Landroid/content/Intent;)V

    .line 164
    :cond_1
    monitor-exit v1

    .line 166
    :cond_2
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRegistrationIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v0, v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->isDeviceTokenStale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v2

    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-eq v2, v3, :cond_1

    .line 78
    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v0, v2}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    .line 79
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()LR;

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->sendRegistrationRequest()V

    .line 84
    :cond_2
    monitor-exit v1

    .line 86
    :cond_3
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/parse/ParseInstallation;->hasCurrentInstallation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v2

    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v2, v3, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->isDeviceTokenStale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->sendRegistrationRequest()V

    .line 109
    :cond_1
    monitor-exit v1

    .line 111
    :cond_2
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
