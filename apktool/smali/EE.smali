.class public abstract LEE;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements LEM;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/preference/PreferenceManager;

.field private c:Landroid/widget/ListView;

.field private final d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, LEF;

    invoke-direct {v0, p0}, LEF;-><init>(LEE;)V

    iput-object v0, p0, LEE;->a:Landroid/os/Handler;

    .line 67
    new-instance v0, LEG;

    invoke-direct {v0, p0}, LEG;-><init>(LEE;)V

    iput-object v0, p0, LEE;->d:Ljava/lang/Runnable;

    .line 74
    new-instance v0, LEH;

    invoke-direct {v0, p0}, LEH;-><init>(LEE;)V

    iput-object v0, p0, LEE;->g:Landroid/view/View$OnKeyListener;

    .line 376
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    return-void
.end method

.method static synthetic a(LEE;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, LEE;->e()V

    return-void
.end method

.method static synthetic b(LEE;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LEE;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 302
    iget-object v0, p0, LEE;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, LEE;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p0}, LEE;->b()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, LEE;->c()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 312
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 315
    invoke-virtual {p0}, LEE;->c()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, LEI;

    invoke-direct {v2, p0, v0}, LEI;-><init>(LEE;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 340
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, LEE;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, LEE;->getView()Landroid/view/View;

    move-result-object v0

    .line 352
    if-nez v0, :cond_1

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 356
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_2

    .line 357
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LEE;->c:Landroid/widget/ListView;

    .line 362
    iget-object v0, p0, LEE;->c:Landroid/widget/ListView;

    if-nez v0, :cond_3

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_3
    iget-object v0, p0, LEE;->c:Landroid/widget/ListView;

    iget-object v1, p0, LEE;->g:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 368
    iget-object v0, p0, LEE;->a:Landroid/os/Handler;

    iget-object v1, p0, LEE;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 261
    invoke-direct {p0}, LEE;->a()V

    .line 263
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, LEE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, LEE;->b()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, LEK;->a(Landroid/preference/PreferenceManager;Landroid/app/Activity;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, LEE;->a(Landroid/preference/PreferenceScreen;)V

    .line 265
    return-void
.end method

.method protected a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 108
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 109
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 111
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 112
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0, p2}, LEE;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 117
    :cond_1
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0, p1}, LEK;->a(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, LEE;->e:Z

    .line 237
    iget-boolean v0, p0, LEE;->f:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, LEE;->d()V

    .line 241
    :cond_0
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, LEE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, LEJ;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, LEE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LEJ;

    invoke-interface {v0, p0, p2}, LEJ;->a(LEE;Landroid/preference/Preference;)Z

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0}, LEK;->a(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, LEE;->f()V

    .line 344
    iget-object v0, p0, LEE;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    iget-boolean v0, p0, LEE;->e:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, LEE;->e()V

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LEE;->f:Z

    .line 149
    if-eqz p1, :cond_1

    .line 150
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, LEE;->b()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 160
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0, p1, p2, p3}, LEK;->a(Landroid/preference/PreferenceManager;IILandroid/content/Intent;)V

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, LEE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, LEK;->a(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    .line 131
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0, p0}, LEK;->a(Landroid/preference/PreferenceManager;LEE;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f030063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 188
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0}, LEK;->c(Landroid/preference/PreferenceManager;)V

    .line 189
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, LEE;->c:Landroid/widget/ListView;

    .line 180
    iget-object v0, p0, LEE;->a:Landroid/os/Handler;

    iget-object v1, p0, LEE;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, LEE;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 183
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, LEE;->b()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 198
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 165
    invoke-virtual {p0}, LEE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 166
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0, p0}, LEK;->a(Landroid/preference/PreferenceManager;LEM;)V

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 172
    invoke-virtual {p0}, LEE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 173
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    invoke-static {v0}, LEK;->b(Landroid/preference/PreferenceManager;)V

    .line 174
    iget-object v0, p0, LEE;->b:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LEK;->a(Landroid/preference/PreferenceManager;LEM;)V

    .line 175
    return-void
.end method
