.class public LDD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, LDD;->c:Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    iput-object p2, p0, LDD;->a:Ljava/lang/String;

    iput p3, p0, LDD;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, LDD;->a:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, LDD;->c:Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->dismiss()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, LDD;->c:Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    iget v1, p0, LDD;->b:I

    invoke-static {v0, v1}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a(Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;I)V

    goto :goto_0
.end method
