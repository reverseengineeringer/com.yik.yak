.class LtE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

.field final synthetic b:LtD;


# direct methods
.method constructor <init>(LtD;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, LtE;->b:LtD;

    iput-object p2, p0, LtE;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_3

    move v2, v1

    .line 455
    :goto_0
    if-nez v2, :cond_0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 456
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->clearComposingText()V

    .line 457
    iget-object v0, p0, LtE;->b:LtD;

    iget-object v0, v0, LtD;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)LtC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v2, p0, LtE;->b:LtD;

    iget-object v2, v2, LtD;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-static {v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)LtC;

    move-result-object v2

    iget-object v3, p0, LtE;->b:LtD;

    invoke-static {v3}, LtD;->a(LtD;)Ltk;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LtC;->a(Ltk;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 463
    :cond_2
    return v0

    :cond_3
    move v2, v0

    .line 449
    goto :goto_0
.end method
