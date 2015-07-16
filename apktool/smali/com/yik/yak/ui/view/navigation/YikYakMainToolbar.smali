.class public Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onFinishInflate()V

    .line 52
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->a:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setActionButtonToYakarma()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, LAa;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->setActionButtonToYakarma(I)V

    .line 43
    return-void
.end method

.method public setActionButtonToYakarma(I)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setActionButtonVisibility(I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public setOnActionButtonClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/YikYakMainToolbar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
