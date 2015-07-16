.class LuG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luo;


# instance fields
.field final synthetic a:LuE;


# direct methods
.method private constructor <init>(LuE;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, LuG;->a:LuE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LuE;LuF;)V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0, p1}, LuG;-><init>(LuE;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 993
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 994
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 958
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 959
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 960
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 999
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 1000
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 965
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 966
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 967
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 972
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 973
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 974
    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 986
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 987
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 988
    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, LuG;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 979
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 980
    iget-object v1, p0, LuG;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 981
    return-void
.end method
