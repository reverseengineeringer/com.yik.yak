.class public LCl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SplashScreen;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, LCl;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, LCl;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SplashScreen;->a(Lcom/yik/yak/ui/activity/SplashScreen;Z)V

    .line 51
    return-void
.end method
