.class public LDr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/DraftDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/DraftDialog;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, LDr;->a:Lcom/yik/yak/ui/dialog/DraftDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, LDr;->a:Lcom/yik/yak/ui/dialog/DraftDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/DraftDialog;->setResult(I)V

    .line 43
    iget-object v0, p0, LDr;->a:Lcom/yik/yak/ui/dialog/DraftDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/dialog/DraftDialog;->a(Lcom/yik/yak/ui/dialog/DraftDialog;)V

    .line 44
    return-void
.end method
