.class public LCD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/YikYakDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/YikYakDialog;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, LCD;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, LCD;->a:Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->finish()V

    .line 173
    return-void
.end method
