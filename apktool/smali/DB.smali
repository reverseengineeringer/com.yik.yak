.class public LDB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LDB;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, LDB;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->finish()V

    .line 108
    return-void
.end method
