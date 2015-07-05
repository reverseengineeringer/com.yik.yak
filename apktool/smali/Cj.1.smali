.class public LCj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SplashScreen;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, LCj;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, LCj;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->a(Lcom/yik/yak/ui/activity/SplashScreen;)V

    .line 43
    :goto_0
    return v1

    .line 41
    :cond_1
    iget-object v0, p0, LCj;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->b(Lcom/yik/yak/ui/activity/SplashScreen;)V

    goto :goto_0
.end method
