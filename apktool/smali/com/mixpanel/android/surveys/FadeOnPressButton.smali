.class public Lcom/mixpanel/android/surveys/FadeOnPressButton;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private a(F)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->setAlpha(F)V

    .line 52
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->getDrawableState()[I

    move-result-object v3

    .line 36
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    .line 37
    const v6, 0x10100a7

    if-ne v5, v6, :cond_3

    .line 38
    iget-boolean v0, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a(F)V

    :cond_0
    move v0, v1

    .line 43
    :cond_1
    iget-boolean v2, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a(F)V

    .line 45
    iput-boolean v1, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a:Z

    .line 47
    :cond_2
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 48
    return-void

    .line 36
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
