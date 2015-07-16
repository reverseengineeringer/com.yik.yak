.class public LFM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/view/LinkDetectingEditText;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/view/LinkDetectingEditText;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, LFM;->a:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, LFM;->a:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-static {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a(Lcom/yik/yak/ui/view/LinkDetectingEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 60
    iget-object v0, p0, LFM;->a:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-static {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b(Lcom/yik/yak/ui/view/LinkDetectingEditText;)V

    .line 62
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
