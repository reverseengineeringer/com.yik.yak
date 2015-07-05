.class public LCm;
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
    .line 54
    iput-object p1, p0, LCm;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, LCm;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->c(Lcom/yik/yak/ui/activity/SplashScreen;)V

    .line 68
    :goto_0
    return v2

    .line 62
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 63
    iget-object v0, p0, LCm;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->d(Lcom/yik/yak/ui/activity/SplashScreen;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, LCm;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->c(Lcom/yik/yak/ui/activity/SplashScreen;)V

    goto :goto_0
.end method
