.class public Lcom/yik/yak/ui/fragment/ContactUsFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements LBn;
.implements LBr;


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/Spinner;

.field private f:LAD;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->d:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->g:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->h:Ljava/util/List;

    .line 312
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/ContactUsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/fragment/ContactUsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/yik/yak/ui/fragment/ContactUsFragment;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "KEY_PRESELECTED_OPTION"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    const/16 v0, 0xa0

    invoke-static {v0}, LHi;->a(I)I

    move-result v0

    .line 280
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 281
    const/16 v2, 0x31

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 282
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 283
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "Contact Us"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e()V

    .line 303
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 9

    .prologue
    const v6, 0x7f0d0121

    const v4, 0x7f0d0120

    const/4 v8, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, LHi;->a(I)I

    .line 199
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    const v1, 0x7f0d011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "You must enter a valid email adddress."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    .line 208
    const-string v0, "You must select a category."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    .line 214
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 216
    const-string v0, "You must enter a comment."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Select category"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    :cond_3
    const-string v0, "Please select a category."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_4
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0, v3}, LHa;->j(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->d:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 230
    iget-object v6, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    const-wide/16 v6, 0x6

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->f:LAD;

    invoke-virtual {v1}, LAD;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 240
    const-string v4, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v4, "email"

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v2, "category"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "contactUs"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, LAj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v3

    const-string v0, "RequestBody:body"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 253
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v2}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 258
    invoke-static {v8}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 259
    new-instance v1, LEr;

    invoke-direct {v1, p0}, LEr;-><init>(Lcom/yik/yak/ui/fragment/ContactUsFragment;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 272
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->d:Landroid/content/Context;

    const-string v1, "You have contacted Yik Yak"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "KEY_PRESELECTED_OPTION"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    if-nez v6, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    invoke-static {p0, v0}, LHm;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 149
    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 179
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 149
    :sswitch_0
    const-string v7, "/geofence"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v7, "/peek"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v7, "/idea"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v7, "/issue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v7, "/report"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v7, "/other"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v7, "/basecamp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v3, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v4, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 171
    :pswitch_5
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 175
    :pswitch_6
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x59ca5351 -> :sswitch_0
        -0x2e04edff -> :sswitch_6
        0x2c78fa6 -> :sswitch_2
        0x2cac20a -> :sswitch_1
        0x56316e0a -> :sswitch_3
        0x56864441 -> :sswitch_5
        0x7e913623 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 76
    const v0, 0x7f030048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->d:Landroid/content/Context;

    .line 78
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->f:LAD;

    .line 80
    invoke-static {}, LAa;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->h:Ljava/util/List;

    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->g:Ljava/util/List;

    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    const v1, 0x7f0d011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 90
    new-instance v1, LEp;

    invoke-direct {v1, p0}, LEp;-><init>(Lcom/yik/yak/ui/fragment/ContactUsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    const v1, 0x7f0d011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 99
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 100
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v2, "com.yik.yak.url:"

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    const v1, 0x7f0d011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 103
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    new-instance v1, LEs;

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->d:Landroid/content/Context;

    const v2, 0x7f03002a

    iget-object v3, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, LEs;-><init>(Landroid/content/Context;ILjava/util/List;LEp;)V

    .line 112
    const v0, 0x1090009

    invoke-virtual {v1, v0}, LEs;->setDropDownViewResource(I)V

    .line 114
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    const v2, 0x7f0d0120

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    .line 115
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->e:Landroid/widget/Spinner;

    new-instance v1, LEq;

    invoke-direct {v1, p0}, LEq;-><init>(Lcom/yik/yak/ui/fragment/ContactUsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    invoke-virtual {p0, v5}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->setHasOptionsMenu(Z)V

    .line 133
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ContactUsFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onStart()V

    .line 188
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 189
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onStop()V

    .line 194
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 195
    return-void
.end method
