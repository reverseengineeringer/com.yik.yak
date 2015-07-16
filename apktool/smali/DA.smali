.class public LDA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, LDA;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, LDA;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->setResult(I)V

    .line 94
    iget-object v0, p0, LDA;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->b(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V

    .line 95
    return-void
.end method
