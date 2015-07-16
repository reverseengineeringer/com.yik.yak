.class public Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field private b:LDE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 162
    return-void
.end method

.method public static varargs a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;

    invoke-direct {v0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "KEY_TITLE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "KEY_SUBTITLE"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "KEY_MESSAGE"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "KEY_BUTTON_NAMES"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {v0, p0, p1}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->b:LDE;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->b:LDE;

    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, p0, p1, v1}, LDE;->a(Landroid/support/v4/app/DialogFragment;ILjava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/16 v5, 0x11

    const/16 v4, 0xa

    .line 99
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101032b

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 102
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v2, "cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 110
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 112
    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 113
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 115
    new-instance v1, LDD;

    invoke-direct {v1, p0, p2, p3}, LDD;-><init>(Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a(I)V

    return-void
.end method

.method private a()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_BUTTON_NAMES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a:[Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    instance-of v0, p1, LDE;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, LDE;

    iput-object p1, p0, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->b:LDE;

    .line 136
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 57
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f0f0042

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->setStyle(II)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    const v0, 0x7f030046

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_TITLE"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_SUBTITLE"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3}, LHi;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_0
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_MESSAGE"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 83
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a()[Ljava/lang/String;

    move-result-object v3

    .line 85
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 86
    aget-object v4, v3, v2

    invoke-direct {p0, v1, v4, v2}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->a(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/VerticalButtonsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method
